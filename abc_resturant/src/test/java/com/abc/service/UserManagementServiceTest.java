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
        
        AppUser user = new AppUser("john_doe", "password123", "admin");
        when(userRepositoryMock.addUser(user)).thenReturn(true);

        
        boolean result = userManagementService.addUser(user);

        
        assertTrue(result, "User should be added successfully.");
    }

    @Test
    public void testAddUserFailure() throws SQLException {
        
        AppUser user = new AppUser("john_doe", "password123", "admin");
        when(userRepositoryMock.addUser(user)).thenReturn(false);

        
        boolean result = userManagementService.addUser(user);

        
        assertFalse(result, "User should not be added.");
    }

    @Test
    public void testDeleteUserSuccess() throws SQLException {
        
        String username = "john_doe";
        when(userRepositoryMock.deleteUser(username)).thenReturn(true);

        
        boolean result = userManagementService.deleteUser(username);

        
        assertTrue(result, "User should be deleted successfully.");
    }

    @Test
    public void testDeleteUserFailure() throws SQLException {
        
        String username = "john_doe";
        when(userRepositoryMock.deleteUser(username)).thenReturn(false);
       
        boolean result = userManagementService.deleteUser(username);
        
        assertFalse(result, "User should not be deleted.");
    }

    @Test
    public void testGetAllUsers() throws SQLException {
        
        List<AppUser> userList = new ArrayList<>();
        userList.add(new AppUser("john_doe", "password123", "admin"));
        userList.add(new AppUser("jane_doe", "password456", "user"));

        when(userRepositoryMock.getAllUsers()).thenReturn(userList);
        
        List<AppUser> result = userManagementService.getAllUsers();
        
        assertTrue(result.size() == 2, "There should be 2 users.");
        assertTrue(result.stream().anyMatch(user -> "john_doe".equals(user.getUsername())), "User john_doe should be in the list.");
    }

    @Test
    public void testAddUserThrowsException() throws SQLException {
        
        AppUser user = new AppUser("john_doe", "password123", "admin");
        when(userRepositoryMock.addUser(user)).thenThrow(new SQLException("Database error"));

        
        boolean result = false;
        try {
            result = userManagementService.addUser(user);
        } catch (SQLException e) {
            
        }

        assertFalse(result, "User addition should fail.");
    }
}
