package com.abc.service;

import com.abc.dao.UserRepository;
import com.abc.model.AppUser;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.when;

public class UserManagementServiceTest {

    private UserManagementService userManagementService;
    private UserRepository userRepositoryMock;

    @BeforeEach
    public void setUp() {
        userRepositoryMock = Mockito.mock(UserRepository.class);
        userManagementService = new UserManagementService(userRepositoryMock);
    }

    @Test
    public void testAddUserSuccess() throws SQLException {
        // Arrange
        AppUser user = new AppUser("john_doe", "password123", "admin");
        when(userRepositoryMock.addUser(user)).thenReturn(true);

        // Act
        boolean result = userManagementService.addUser(user);

        // Assert
        assertTrue(result, "User should be added successfully.");
    }

    @Test
    public void testAddUserFailure() throws SQLException {
        // Arrange
        AppUser user = new AppUser("john_doe", "password123", "admin");
        when(userRepositoryMock.addUser(user)).thenReturn(false);

        // Act
        boolean result = userManagementService.addUser(user);

        // Assert
        assertFalse(result, "User should not be added.");
    }

    @Test
    public void testDeleteUserSuccess() throws SQLException {
        // Arrange
        String username = "john_doe";
        when(userRepositoryMock.deleteUser(username)).thenReturn(true);

        // Act
        boolean result = userManagementService.deleteUser(username);

        // Assert
        assertTrue(result, "User should be deleted successfully.");
    }

    @Test
    public void testDeleteUserFailure() throws SQLException {
        // Arrange
        String username = "john_doe";
        when(userRepositoryMock.deleteUser(username)).thenReturn(false);

        // Act
        boolean result = userManagementService.deleteUser(username);

        // Assert
        assertFalse(result, "User should not be deleted.");
    }

    @Test
    public void testGetAllUsers() throws SQLException {
        // Arrange
        List<AppUser> userList = new ArrayList<>();
        userList.add(new AppUser("john_doe", "password123", "admin"));
        userList.add(new AppUser("jane_doe", "password456", "user"));

        when(userRepositoryMock.getAllUsers()).thenReturn(userList);

        // Act
        List<AppUser> result = userManagementService.getAllUsers();

        // Assert
        assertTrue(result.size() == 2, "There should be 2 users.");
        assertTrue(result.stream().anyMatch(user -> "john_doe".equals(user.getUsername())), "User john_doe should be in the list.");
    }

    @Test
    public void testAddUserThrowsException() throws SQLException {
        // Arrange
        AppUser user = new AppUser("john_doe", "password123", "admin");
        when(userRepositoryMock.addUser(user)).thenThrow(new SQLException("Database error"));

        // Act
        boolean result = false;
        try {
            result = userManagementService.addUser(user);
        } catch (SQLException e) {
            // Handle exception in test
        }

        // Assert
        assertFalse(result, "User addition should fail.");
    }
}
