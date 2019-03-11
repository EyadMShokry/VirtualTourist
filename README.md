# Virtual Tourist
The Virtual Tourist app downloads and stores images from Flickr. The app allows users to drop pins on a map, as if they were stops on a tour. Users will then be able to download pictures for the location and persist both the pictures, and the association of the pictures with the pin.

## Why This Project?
The project requires to persist a complex model using Core Data, and plist persistence of an array of dictionaries - core skills required of any iOS Developer.

## What did I learn?
- Use URLSessions to interact with a public restful API
- Create a user interface that intuitively communicates network activity and download progress
- Store media on the device file system Use Core Data for local persistence of an object structure

## Why is this project meaningful to my career?
The project gave me practice with powerful mechanisms for persisting data locally on a device. Storing media and retrieving it later is an essential skill for any iOS developer.

# Application Scenes
- **Travel Locations Map View**: Allows the user to drop pins around the world.
- **Photo Album View**: Allows the users to download and edit an album for a location.

These three scenes are described in detail below.

## Travel Locations Map
- When the app first starts it will open to the map view. Users will be able to zoom and scroll around the map using standard pinch and drag gestures.
- The center of the map and the zoom level should be persistent. If the app is turned off, the map should return to the same state when it is turned on again.
- Tapping and holding the map drops a new pin. Users can place any number of pins on the map.
- When a pin is tapped, the app will navigate to the Photo Album view associated with the pin.

<img src="https://lh5.googleusercontent.com/rKm0FyEAGi-hfPIZKHaDEQ34Uorpawt7vwsD1jlZbS_rdBSG0bjNyenl-uoj8aAKRgThYWAfDehNXlnp59yTFBZR7HqHY23rjNEuRmehWywEPa9lVLD1kQTeHuGaImRmAIsG1pM" width="200" height="360" />


## Photo Album
- If the user taps a pin that does not yet have a photo album, the app will download Flickr images associated with the latitude and longitude of the pin.
- If no images are found a “No Images” label will be displayed.
- If there are images, then they will be displayed in a collection view.
- While the images are downloading, the photo album is in a temporary “downloading” state in which the New Collection button is disabled. The app should determine how many images are available for the pin location, and display a placeholder image for each.

<img src="https://lh4.googleusercontent.com/-grj6MqEmSIH4loifTih1UluTlc_YzITChW3t-qqyubICnLWaw6RQBxBIy5q8rKNRVQyvDpG1IB3VDTZAuR4gtUxtghD2iWJRZJ77eDA_sFFAccGcuDWLiiC6Dm7b0Qeh8D1IDM" width="200" height="360" />


- Once the images have all been downloaded, the app should enable the **New Collection** button at the bottom of the page. Tapping this button should empty the photo album and fetch a new set of images. Note that in locations that have a fairly static set of Flickr images, “new” images might overlap with previous collections of images.
- Users should be able to remove photos from an album by tapping them. Pictures will flow up to fill the space vacated by the removed photo.
- All changes to the photo album should be automatically made persistent.
- Tapping the back button should return the user to the Map view.

<img src="https://lh3.googleusercontent.com/JNEkTtA8gVnlFVwTraA09Q01iX5_5FvQ7teKMlowWZmLCIAEaBb9aKcLm8DkMLM4Omvz8CV8rRkJbn1Cdj_zfQNdKB-J_GGDzyiSZuaQA5YWejB8hP5kSeG15yAObP9sWpANQZw" width="200" height="360" />


- If the user selects a pin that already has a photo album then the Photo Album view should display the album and the New Collection button should be enabled.
