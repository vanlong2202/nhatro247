package com.nhatro247.nhatro247.service.validator;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Constraint(validatedBy = RegisterValidator.class)
@Target({ ElementType.METHOD, ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface RegisterChecked {
    String message() default "Email đã tồn tại";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
