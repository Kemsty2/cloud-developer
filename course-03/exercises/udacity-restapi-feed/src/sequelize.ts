import {Sequelize} from 'sequelize-typescript';
import { config } from './config/config';


const c = config.dev;

// Instantiate new Sequelize instance!

export const sequelize = new Sequelize(
  `postgres://${c.username}:${c.password}@${c.host}:5432/${c.database}`);

