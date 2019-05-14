package com.ealen.web.dto;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * Created by EalenXie on 2019/5/14 10:16.
 */
@Data
public class ModifyCronDTO {
    @NotNull(message = "the job id cannot be null")
    private Integer id;

    @NotEmpty(message = "the cron cannot be empty")
    private String cron;
}
