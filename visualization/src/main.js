
import { citiesData, routesData, commitToFiles, filesModificationsDates } from '../data.js';
import { World } from './World/World.js'; 

function main() {
// Get a reference to the container element
const container = document.querySelector('#scene-container');

// create a new world
const world = new World(container, citiesData, routesData, commitToFiles, filesModificationsDates);

// start the animation loop
world.start();
}

main();