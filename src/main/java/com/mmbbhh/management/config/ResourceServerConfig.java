package com.mmbbhh.management.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

@Configuration
@EnableResourceServer
public class ResourceServerConfig extends ResourceServerConfigurerAdapter{
    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws
            Exception {
        //仅允许令牌认证
        resources.resourceId("rid").stateless(true);
    }
    @Override
    public void configure(HttpSecurity http)
            throws Exception {
        http.authorizeRequests()
                .antMatchers("/sign/check").hasRole("department_manage")
                .anyRequest().authenticated();
    }
}

