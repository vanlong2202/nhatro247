package com.nhatro247.nhatro247.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.entity.dto.DashboardNewsletterDTO;
import com.nhatro247.nhatro247.entity.dto.NewsletterCriteriaDTO;
import com.nhatro247.nhatro247.repository.NewsletterRepository;
import com.nhatro247.nhatro247.service.specification.NewsletterSpecs;

@Service
public class NewsletterService {
    private final NewsletterRepository newsletterRepository;

    public NewsletterService(NewsletterRepository newsletterRepository) {
        this.newsletterRepository = newsletterRepository;
    }

    public Newsletter addNewsletter(Newsletter newsletter) {
        return this.newsletterRepository.save(newsletter);
    }

    public Newsletter getNewsletterByID(long id) {
        return this.newsletterRepository.findByNewsletterID(id);
    }

    public List<Newsletter> getAllByStatus(int isStatus) {
        return this.newsletterRepository.findByIsStatus(isStatus);
    }

    public List<Newsletter> getAllByStatusNot(int isStatus) {
        return this.newsletterRepository.findByIsStatusNot(isStatus);
    }

    public List<Newsletter> getAllBySvip(int svip) {
        return this.newsletterRepository.findBySvip(svip);
    }

    public List<Newsletter> getListActive(int isStatus, int isActive) {
        return this.newsletterRepository.findByIsStatusAndIsActive(isStatus, isActive);
    }

    public Page<Newsletter> getAll(Pageable pageable, String name) {
        return this.newsletterRepository.findAll(NewsletterSpecs.titleLike(name), pageable);
    }

    public Page<Newsletter> getAllSpecs(Pageable pageable, NewsletterCriteriaDTO newsletterCriteriaDTO) {
        if (newsletterCriteriaDTO.getPrice() == null
                && newsletterCriteriaDTO.getPrioritize() == null
                && newsletterCriteriaDTO.getAcreage() == null
                && newsletterCriteriaDTO.getTitle() == null
                && newsletterCriteriaDTO.getFormat() == null
                && newsletterCriteriaDTO.getAddress() == null
                && newsletterCriteriaDTO.getSelfManagement() == null
                && newsletterCriteriaDTO.getType() == null) {
            return this.newsletterRepository.findAll(pageable);
        }
        Specification<Newsletter> combinedSpec = Specification.where(null);
        if (newsletterCriteriaDTO.getPrioritize() != null && newsletterCriteriaDTO.getPrioritize().isPresent()) {
            Specification<Newsletter> currentSpecs = this
                    .buildPrioritizeSpecification(newsletterCriteriaDTO.getPrioritize().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (newsletterCriteriaDTO.getPrice() != null && newsletterCriteriaDTO.getPrice().isPresent()) {
            Specification<Newsletter> currentSpecs = this
                    .buildPriceSpecification(newsletterCriteriaDTO.getPrice().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (newsletterCriteriaDTO.getSelfManagement() != null
                && newsletterCriteriaDTO.getSelfManagement().isPresent()) {
            Specification<Newsletter> currentSpecs = NewsletterSpecs
                    .macthPrioritize(Integer.parseInt(newsletterCriteriaDTO.getSelfManagement().get()));
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        if (newsletterCriteriaDTO.getTitle() != null
                && newsletterCriteriaDTO.getTitle().isPresent()) {
            Specification<Newsletter> currentSpecs = NewsletterSpecs
                    .titleLike(newsletterCriteriaDTO.getTitle().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (newsletterCriteriaDTO.getAddress() != null
                && newsletterCriteriaDTO.getAddress().isPresent()) {
            Specification<Newsletter> currentSpecs = NewsletterSpecs
                    .matchAddress(newsletterCriteriaDTO.getAddress().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (newsletterCriteriaDTO.getFormat() != null
                && newsletterCriteriaDTO.getFormat().isPresent()) {
            Specification<Newsletter> currentSpecs = NewsletterSpecs
                    .matchFormat(newsletterCriteriaDTO.getFormat().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        if (newsletterCriteriaDTO.getType() != null && newsletterCriteriaDTO.getType().isPresent()) {
            Specification<Newsletter> currentSpecs = this
                    .buildTypeSpecification(newsletterCriteriaDTO.getType().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (newsletterCriteriaDTO.getAcreage() != null && newsletterCriteriaDTO.getAcreage().isPresent()) {
            Specification<Newsletter> currentSpecs = this
                    .buildAcreageSpecification(newsletterCriteriaDTO.getAcreage().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        return this.newsletterRepository.findAll(combinedSpec, pageable);
    }

    private Specification<Newsletter> buildPrioritizeSpecification(String prioritizeString) {
        Specification<Newsletter> combinedSpec = Specification.where(null);
        int prioritize = 0;
        switch (prioritizeString) {
            case "tat-ca":
                prioritize = 0;
                break;
            case "nu":
                prioritize = 1;
                break;
            case "nam":
                prioritize = 2;
                break;
        }
        Specification<Newsletter> rangeSpec = NewsletterSpecs.macthPrioritize(prioritize);
        combinedSpec = combinedSpec.or(rangeSpec);
        return combinedSpec;
    }

    private Specification<Newsletter> buildAcreageSpecification(String acreage) {
        Specification<Newsletter> combinedSpec = Specification.where(null);
        int acreage_min = 0;
        int acreage_max = 0;
        switch (acreage) {
            case "duoi-20m-vuong":
                acreage_min = 1;
                acreage_max = 20;
                break;
            case "tu-20m-den-40m-vuong":
                acreage_min = 20;
                acreage_max = 40;
                break;
            case "tu-40m-den-60m-vuong":
                acreage_min = 40;
                acreage_max = 60;
                break;
            case "tu-60m-den-80m-vuong":
                acreage_min = 60;
                acreage_max = 80;
                break;
            case "tren-80m-vuong":
                acreage_min = 80;
                acreage_max = 300;
                break;
        }

        if (acreage_min != 0 && acreage_max != 0) {
            Specification<Newsletter> rangeSpec = NewsletterSpecs.matchAcreage(acreage_min, acreage_max);
            combinedSpec = combinedSpec.or(rangeSpec);
        }
        return combinedSpec;
    }

    private Specification<Newsletter> buildTypeSpecification(List<String> typeString) {
        Specification<Newsletter> combinedSpec = Specification.where(null);
        int type = 0;
        for (String p : typeString) {
            switch (p) {
                case "cho-thue-tro":
                    type = 1;
                    break;
                case "nha-can-ho-cho-thue":
                    type = 2;
                    break;
                case "tim-o-ghep":
                    type = 3;
                    break;
            }
            if (type != 0) {
                Specification<Newsletter> typeSpecs = NewsletterSpecs.macthType(type);
                combinedSpec = combinedSpec.or(typeSpecs);
            }
        }
        return combinedSpec;
    }

    private Specification<Newsletter> buildPriceSpecification(String price) {
        Specification<Newsletter> combinedSpec = Specification.where(null);
        double min = 0;
        double max = 0;
        switch (price) {
            case "duoi-1tr":
                min = 1;
                max = 1000000;
                break;
            case "khoang-1tr-toi-2tr":
                min = 1000000;
                max = 2000000;
                break;
            case "khoang-2tr-toi-5tr":
                min = 2000000;
                max = 5000000;
                break;
            case "tren-5tr":
                min = 5000000;
                max = 100000000;
                break;
        }

        if (min != 0 && max != 0) {
            Specification<Newsletter> rangeSpec = NewsletterSpecs.macthPrice(min, max);
            combinedSpec = combinedSpec.or(rangeSpec);
        }
        return combinedSpec;
    }

    public Page<Newsletter> getAllSpecsByType(Pageable pageable, int type) {
        return this.newsletterRepository.findAll(NewsletterSpecs.macthType(type), pageable);
    }

    public List<Newsletter> getAll() {
        return this.newsletterRepository.findAll();
    }

    public List<Newsletter> getAllByAccount(Account account) {
        return this.newsletterRepository.findByAccount(account);
    }

    public List<Newsletter> findByIsStatusAndAccount(int isStatus, Account account) {
        return this.newsletterRepository.findByIsStatusAndAccount(isStatus, account);
    }

    public List<Newsletter> findByAccountAndSvip(Account account, int svip) {
        return this.newsletterRepository.findByAccountAndSvip(account, svip);
    }

    public List<Newsletter> getAllByIsStatusAndSvip(int isStatus, int svip) {
        return this.newsletterRepository.findByIsStatusAndSvip(isStatus, svip);
    }

    public List<Newsletter> getAllBySvip(int isStatus, int isActive, int svip) {
        return this.newsletterRepository.findByIsStatusAndIsActiveAndSvip(isStatus, isActive, svip);
    }

    public void deleteNewsletter(long id) {
        this.newsletterRepository.deleteById(id);
    }

    public Newsletter getOneNewsletter(NewsletterType newsletterType, int isStatus, int isActive, int svip) {
        Sort sort = Sort.by(Sort.Direction.DESC, "createTime");
        return this.newsletterRepository.findTopOneByNewsletterTypeAndIsStatusAndIsActiveAndSvip(newsletterType,
                isStatus, isActive, svip, sort);
    }

    public List<Newsletter> getAllNewslettersSvip() {
        return this.newsletterRepository.findNewsletterSvip();
    }

    public List<Newsletter> getTop3Relate(long typeID, String address, int id) {
        return this.newsletterRepository.findLimit3ByNotID(typeID, address, id);
    }

    public List<DashboardNewsletterDTO> getStatictisNews() {
        List<Object[]> rawResults = newsletterRepository.getDashboardNewsAdmin();
        List<DashboardNewsletterDTO> results = new ArrayList<>();

        for (Object[] row : rawResults) {
            String date = (String) row[0];
            int statusID = ((Number) row[1]).intValue();
            long count = ((Number) row[2]).longValue();

            results.add(new DashboardNewsletterDTO(date, statusID, count));
        }

        return results;
    }
}
