class ObjectVariables {

	constructor() {}

	getInfo() {
		return {
			id: 'test',
			name: 'Test',
			blocks: [
				{
					opcode: 'addVariable',
					blockType: Scratch.BlockType.BUTTON,
					text: 'Add Table Variable'
				}
			]
		}
	}

	addVariable() {
		console.log('hello');
	}
}

Scratch.extensions.register(new ObjectVariables());
