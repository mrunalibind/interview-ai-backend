const express = require("express");
const { registerUserController, loginUserController, logoutUserController, getMeController } = require("../controllers/auth.controller");
const { authUser } = require("../middlewares/auth.middleware");

const authRouter = express.Router();

/**
 * @route POST /api/auth/register
 * @description Register a new User
 * @access Public
 */

authRouter.post("/register", registerUserController);

/**
 * @route POST /api/auth/login
 * @description login user using email, password
 * @access Public
 */

authRouter.post("/login", loginUserController);

/**
 * @route POST /api/auth/logout
 * @description logout user
 * @access Public
 */

authRouter.post("/logout", logoutUserController);

/**
 * @route GET /api/auth/me
 * @description get current user details
 * @access Private
 */

authRouter.get("/me", authUser, getMeController);

module.exports = authRouter;