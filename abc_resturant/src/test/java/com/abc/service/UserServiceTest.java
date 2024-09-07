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
        
        mockUserDAO = Mockito.mock(UserDAO.class);

        
        userService = new UserService();
        userService.setUserDAO(mockUserDAO);  
    }

    @Test
    public void testRegisterUser_Success() {
        String name = "John Doe";
        String email = "john.doe@example.com";
        String contactNumber = "1234567890";
        String password = "password123";

        
        when(mockUserDAO.saveUser(name, email, contactNumber, password)).thenReturn(true);

        
        boolean result = userService.registerUser(name, email, contactNumber, password);
        assertTrue(result);  

        
        verify(mockUserDAO, times(1)).saveUser(name, email, contactNumber, password);
    }
}
