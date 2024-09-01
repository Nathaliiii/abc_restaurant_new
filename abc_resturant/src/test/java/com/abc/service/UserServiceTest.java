package com.abc.service;

import com.abc.dao.UserDAO;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.*;

public class UserServiceTest {

    private UserService userService;
    private UserDAO mockUserDAO;

    @BeforeEach
    public void setUp() {
        // Mock UserDAO
        mockUserDAO = Mockito.mock(UserDAO.class);

        // Initialize UserService and inject mock DAO
        userService = new UserService();
        userService.setUserDAO(mockUserDAO);  // Use the setter to inject the mock DAO
    }

    @Test
    public void testRegisterUser_Success() {
        String name = "John Doe";
        String email = "john.doe@example.com";
        String contactNumber = "1234567890";
        String password = "password123";

        // Mock the DAO method to return true
        when(mockUserDAO.saveUser(name, email, contactNumber, password)).thenReturn(true);

        // Call the service method and assert the result
        boolean result = userService.registerUser(name, email, contactNumber, password);
        assertTrue(result);  // Expecting a successful registration

        // Verify that saveUser was called exactly once
        verify(mockUserDAO, times(1)).saveUser(name, email, contactNumber, password);
    }
}
