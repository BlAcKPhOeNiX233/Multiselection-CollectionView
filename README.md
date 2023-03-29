# Multiselection-CollectionView
<img src="https://user-images.githubusercontent.com/105356447/228501789-4ff49ca0-43c8-4eae-9d90-a404543bbc92.jpg" align="right">
Example of a multi selection CollectionView in UIKit.

In this example, the CollectionView contains buttons wich change color after the click.
<p align="center">
  <img src="https://user-images.githubusercontent.com/105356447/228500237-9f54e3b3-ff34-4d65-bca9-737ddbad4d98.png" />
</p>

In a real project buttons, can be customized for be used for **everything requiers a click** (example: filters, tic tac toe cells, ecc.).
<p align="center">
<img width="247" src="https://user-images.githubusercontent.com/105356447/228505172-7218e7f4-d20e-4f04-bda7-f19468a33566.png">
</p>

## How it works
### Scene
The CollectionView is inside a view so the size can be customized.
<p align="center">
<img width="222" src="https://user-images.githubusercontent.com/105356447/228507900-08f6b336-7cd9-4efb-8557-51a07618ed98.png">
</p>

### Cells
Each cell contains a button with an **Referencing Outlet** for the button instace and a **Sent Event** for the onClick listener.
