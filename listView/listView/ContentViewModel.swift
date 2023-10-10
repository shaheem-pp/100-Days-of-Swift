//
//  ContentViewModel.swift
//  listView
//
//  Created by Shaheem PP on 10/10/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var selectedImage: ImageModel?
    
    var images: [ImageModel] = [
        ImageModel(imageName: "img1", description: "In the heart of the untouched wilderness, where the sunlight filters through ancient trees, a symphony of bird songs orchestrates the morning. The delicate dance of wildflowers in the meadow reveals the secrets of nature's artistry. The babbling brook, winding its way through mossy rocks, whispers tales of centuries past. The scent of pine lingers in the air, a reminder of the forest's timeless embrace. In this sanctuary of tranquility, nature's grandeur paints a canvas of serenity, inviting all souls to find solace in its harmonious melody."),
        ImageModel(imageName: "img2", description: "Beneath the azure sky, where the sun kisses the earth with golden warmth, a meandering river weaves through lush meadows. The melodious chirping of crickets harmonizes with the gentle rustle of leaves, creating a symphony of life. Majestic mountains stand sentinel, their peaks crowned with glistening snow, guarding the secrets of the valley below. A fragrant breeze carries whispers of blooming wildflowers, adorning the landscape like nature's jewels. Amidst this idyllic scenery, every moment is a poem, and every breath is a sonnet, celebrating the essence of our natural world."),
        ImageModel(imageName: "img3", description: "Among the rolling hills, where emerald forests meet the cerulean sky, a hidden waterfall cascades down sheer cliffs, its silvery veil shimmering in the sunlight. The fragrance of earth after rain mingles with the sweet aroma of blooming jasmine, creating an intoxicating perfume that lingers in the air. Wild creatures, both great and small, roam freely, their lives intertwined in a delicate balance of predator and prey. Vibrant butterflies, adorned in myriad hues, dance around blossoming wildflowers, painting the meadow with a kaleidoscope of colors. Nature, in its splendid generosity, bestows upon us this enchanting spectacle, reminding us of the boundless wonders that grace our world."),
        ImageModel(imageName: "img4", description: "As dawn breaks over the horizon, the misty tendrils of morning embrace the tranquil lake, where mirrored reflections of the awakening sky create a mesmerizing tableau. Ancient trees, their gnarled roots embedded in the fertile soil, stand as guardians of the woodland realm, their leaves whispering secrets to the wind. The call of distant songbirds harmonizes with the gentle lapping of water against the shore, composing a symphony that stirs the soul. Dew-kissed petals unfurl under the caress of the sun, revealing the intricate beauty of wild blooms. In this sanctuary of nature, time seems to stand still, allowing us to lose ourselves in the sublime poetry of the natural world."),
        ImageModel(imageName: "img5", description: "In the heart of the wilderness, where sunlight filters through the dense canopy, a vibrant ecosystem comes alive in a harmonious dance of flora and fauna. Towering trees, their branches adorned with verdant foliage, create a sanctuary for diverse life forms. The ethereal song of a distant waterfall serenades the forest, a melody that soothes even the weariest of hearts. Elusive creatures, painted in hues of camouflage, traverse the forest floor, leaving only subtle traces of their presence. Orchids, with their intricate designs, bloom in the shadowy undergrowth, adding splashes of color to the verdant tapestry. Here, in this untamed paradise, the wonders of nature unfold in a spectacle of resilience, reminding us of the intricate web of life that thrives in the heart of the wild."),
    ]
    
//    @Published var selectedImage: ImageModel?
    
    func didSelectImage(image: ImageModel) {
        selectedImage = image
    }
}
