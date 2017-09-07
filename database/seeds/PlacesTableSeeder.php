<?php

use Illuminate\Database\Seeder;

class PlacesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $places = [
            [
                'title' => 'McDonalds',
                'address' => 'Stationsstraat 55',
                'description' => '
                    <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>
                            
                    <ul>
                        <li>Lemonade</li>
                        <li>Iced Fruit Smoothie</li>
                        <li>Iced Frappé</li>
                    </ul>
                ',
                'type' => 'restaurant'
            ],
            [
                'title' => 'Mockamore',
                'address' => 'De Diagonaal 3',
                'type' => 'coffee'
            ],
            [
                'title' => 'Pull & Bear',
                'address' => 'Citadel 27',
                'type' => 'clothing'
            ],
            [
                'title' => 'Zara',
                'address' => 'Citadel 7',
                'type' => 'clothing'
            ],
            [
                'title' => 'Coco Nails & Spa',
                'address' => 'Bankierbaan 48',
                'type' => 'beauty'
            ],
        ];

        foreach ($places as $place) {
            App\Place::create($place);
        }
    }
}
