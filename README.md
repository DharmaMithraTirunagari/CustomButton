# Custom Buttons and Dynamic Label Update in Swift

This project demonstrates how to create custom buttons programmatically in Swift without using Storyboard. It includes setting button properties, handling button actions with a single method, and dynamically updating a label based on the button pressed. This project is ideal for understanding programmatic UI creation, event handling, and basic UI updates in Swift.

## Features

- **Programmatic Button Creation**: Three custom buttons are created with different colors, titles, and tags to distinguish between them.
- **Single Action for Multiple Buttons**: All buttons are linked to a single action method that handles button presses based on the button's tag.
- **Dynamic Label Update**: A label on the screen dynamically updates to display which button was pressed.

## Code Structure

- `ViewController.swift`: Contains the main logic for creating and configuring the buttons and label programmatically.
  - `createCustomButton(title:tag:color:yPosition:)`: Helper method to create a button with specific properties.
  - `setupLabel()`: Configures and adds the label to the view.
  - `buttonTapped(_:)`: Action method to handle button presses and update the label based on the button's tag.

## How It Works

1. **Buttons** are created programmatically in `createCustomButton` with specific titles, colors, and tags. Each button is added to the view.
2. **Target-Action Pattern**: Each button is linked to the `buttonTapped` method using `addTarget`.
3. **Single Action Handling**: The `buttonTapped` method checks the `tag` property of the sender to determine which button was pressed and updates the label text accordingly.
4. **Label Update**: The `statusLabel` text changes to indicate the pressed button, giving immediate feedback on user interaction.

## Usage

1. Clone the repository and open the project in Xcode.
2. Build and run the app on a simulator or device.
3. Tap each button to see the label update with the name of the button pressed.

## Example Output

When you tap each button:
- The label at the bottom updates to display which button was pressed (e.g., "Blue Button pressed", "Yellow Button pressed", etc.).
- Console output also logs the tapped button for debugging purposes.

## Code Snippet

```swift
@objc func buttonTapped(_ sender: UIButton) {
    switch sender.tag {
    case 1:
        statusLabel.text = "Blue Button pressed"
        print("Blue Button tapped")
    case 2:
        statusLabel.text = "Yellow Button pressed"
        print("Yellow Button tapped")
    case 3:
        statusLabel.text = "Red Button pressed"
        print("Red Button tapped")
    default:
        break
    }
}
