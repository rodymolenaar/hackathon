<script>
    export default {
        props: ['places'],

        data() {
            return {
                expandedPlace: null
            }
        },

        methods: {
            expand(place) {
                if (this.isExpanded(place)) {
                    this.expandedPlace = null;
                    return;
                }

                this.expandedPlace = place;
            },
            isExpanded(place) {
                return this.expandedPlace === place;
            }
        }
    }
</script>

<template>
    
    <div class="list">

        <div v-for="place in places" :key="place.title">
            <div class="item" @click="expand(place)" :class="{ 'item--active': isExpanded(place) }">
                <div class="item__icon">
                    <svg v-if="place.type == 'restaurant'" class="restaurant" height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11 9H9V2H7v7H5V2H3v7c0 2.12 1.66 3.84 3.75 3.97V22h2.5v-9.03C11.34 12.84 13 11.12 13 9V2h-2v7zm5-3v8h2.5v8H21V2c-2.76 0-5 2.24-5 4z" />
                        <path d="M0 0h24v24H0z" fill="none" />
                    </svg>
                    <svg v-if="place.type == 'clothing'" class="clothing" height="30" width="30" viewBox="0 0 24 24">
                        <path d="M16 21H8a1 1 0 0 1-1-1v-7.93l-1.3 1.05c-.39.38-1.02.38-1.41 0l-2.83-2.83c-.39-.39-.39-1.02 0-1.41L7.34 3H9c0 1.1 1.34 2 3 2s3-.9 3-2h1.66l5.88 5.88c.39.39.39 1.02 0 1.41l-2.83 2.83c-.39.38-1.02.38-1.41 0L17 12.07V20a1 1 0 0 1-1 1m4.42-11.42l-4.31-4.3c-.31.35-.68.66-1.11.92-.84.5-1.87.8-3 .8-1.7 0-3.21-.68-4.11-1.72l-4.31 4.3L5 11l3-2h1v10h6V9h1l3 2 1.42-1.42z" />
                    </svg>
                    <svg v-if="place.type == 'coffee'" class="coffee" height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 0h24v24H0z" fill="none" />
                        <path d="M20 3H4v10c0 2.21 1.79 4 4 4h6c2.21 0 4-1.79 4-4v-3h2c1.11 0 2-.89 2-2V5c0-1.11-.89-2-2-2zm0 5h-2V5h2v3zM2 21h18v-2H2v2z" />
                    </svg>
                </div>
                <div class="item__details">
                    <p class="title">{{ place.title }}</p>
                    <p class="description">{{ place.description }}</p>
                </div>
                <div class="item__maps-icon">
                    
                    <svg height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 0h24v24H0z" fill="none" />
                        <path d="M21.41 11.58l-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58.55 0 1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41 0-.55-.23-1.06-.59-1.42zM5.5 7C4.67 7 4 6.33 4 5.5S4.67 4 5.5 4 7 4.67 7 5.5 6.33 7 5.5 7z" />
                    </svg>

                </div>
            </div>
            
            <div v-if="isExpanded(place)" class="item-information">
                <div class="item-information__content">
                <p>Op vertoon van je collegekaart 15% korting op de volgende producten:</p>
                    
                <ul>
                    <li>Lemonade</li>
                    <li>Iced Fruit Smoothie</li>
                    <li>Iced Frappé</li>
                </ul>
                </div>

                <div class="item-information__actions">
                    <button class="btn">Openen in Google Maps</button>
                    <button class="btn">Delen</button>
                </div>
            </div>

        </div>


    </div>
</template>