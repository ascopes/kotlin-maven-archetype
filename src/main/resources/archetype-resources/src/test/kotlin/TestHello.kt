package ${package}

import kotlin.test.Test
import kotlin.test.assertEquals


class TestHello {
    @Test
    fun `sayHello should return the expected message when called`() {
        // given
        val name = "Jeff"

        // when
        val message = sayHello(name)

        // then
        assertEquals("Hello, Jeff!", message)
    }
}