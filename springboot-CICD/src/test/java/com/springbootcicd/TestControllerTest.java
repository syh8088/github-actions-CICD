package com.springbootcicd;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class TestControllerTest {

    @Test
    public void test() {
        Assertions.assertThat(false).isTrue();
    }
}