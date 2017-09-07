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
    <div>
        <div class="list" v-if="places.length > 0">

            <div v-for="place in places" :key="place.title">
                <div class="item" @click="expand(place)" :class="{ 'item--active': isExpanded(place) }">
                    <div class="item__icon">
                        <svg v-if="place.type == 'restaurant'" class="item__icon restaurant" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M11 9H9V2H7v7H5V2H3v7c0 2.12 1.66 3.84 3.75 3.97V22h2.5v-9.03C11.34 12.84 13 11.12 13 9V2h-2v7zm5-3v8h2.5v8H21V2c-2.76 0-5 2.24-5 4z" />
                            <path d="M0 0h24v24H0z" fill="none" />
                        </svg>
                        <svg v-else-if="place.type == 'clothing'" class="item__icon clothing" viewBox="0 0 24 24">
                            <path d="M16 21H8a1 1 0 0 1-1-1v-7.93l-1.3 1.05c-.39.38-1.02.38-1.41 0l-2.83-2.83c-.39-.39-.39-1.02 0-1.41L7.34 3H9c0 1.1 1.34 2 3 2s3-.9 3-2h1.66l5.88 5.88c.39.39.39 1.02 0 1.41l-2.83 2.83c-.39.38-1.02.38-1.41 0L17 12.07V20a1 1 0 0 1-1 1m4.42-11.42l-4.31-4.3c-.31.35-.68.66-1.11.92-.84.5-1.87.8-3 .8-1.7 0-3.21-.68-4.11-1.72l-4.31 4.3L5 11l3-2h1v10h6V9h1l3 2 1.42-1.42z" />
                        </svg>
                        <svg v-else-if="place.type == 'coffee'" class="item__icon coffee" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path d="M20 3H4v10c0 2.21 1.79 4 4 4h6c2.21 0 4-1.79 4-4v-3h2c1.11 0 2-.89 2-2V5c0-1.11-.89-2-2-2zm0 5h-2V5h2v3zM2 21h18v-2H2v2z" />
                        </svg>
                        <svg v-else-if="place.type == 'beauty'" class="item__icon beauty" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <circle cx="6" cy="18" fill="none" r="2" />
                            <circle cx="12" cy="12" fill="none" r=".5" />
                            <circle cx="6" cy="6" fill="none" r="2" />
                            <path d="M9.64 7.64c.23-.5.36-1.05.36-1.64 0-2.21-1.79-4-4-4S2 3.79 2 6s1.79 4 4 4c.59 0 1.14-.13 1.64-.36L10 12l-2.36 2.36C7.14 14.13 6.59 14 6 14c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4c0-.59-.13-1.14-.36-1.64L12 14l7 7h3v-1L9.64 7.64zM6 8c-1.1 0-2-.89-2-2s.9-2 2-2 2 .89 2 2-.9 2-2 2zm0 12c-1.1 0-2-.89-2-2s.9-2 2-2 2 .89 2 2-.9 2-2 2zm6-7.5c-.28 0-.5-.22-.5-.5s.22-.5.5-.5.5.22.5.5-.22.5-.5.5zM19 3l-6 6 2 2 7-7V3z" />
                        </svg>
                        <svg v-else-if="place.type == 'sport'" class="item__icon sport" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path d="M15.5 5.5c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zM5 12c-2.8 0-5 2.2-5 5s2.2 5 5 5 5-2.2 5-5-2.2-5-5-5zm0 8.5c-1.9 0-3.5-1.6-3.5-3.5s1.6-3.5 3.5-3.5 3.5 1.6 3.5 3.5-1.6 3.5-3.5 3.5zm5.8-10l2.4-2.4.8.8c1.3 1.3 3 2.1 5.1 2.1V9c-1.5 0-2.7-.6-3.6-1.5l-1.9-1.9c-.5-.4-1-.6-1.6-.6s-1.1.2-1.4.6L7.8 8.4c-.4.4-.6.9-.6 1.4 0 .6.2 1.1.6 1.4L11 14v5h2v-6.2l-2.2-2.3zM19 12c-2.8 0-5 2.2-5 5s2.2 5 5 5 5-2.2 5-5-2.2-5-5-5zm0 8.5c-1.9 0-3.5-1.6-3.5-3.5s1.6-3.5 3.5-3.5 3.5 1.6 3.5 3.5-1.6 3.5-3.5 3.5z" />
                        </svg>
                        <svg  v-else-if="place.type == 'store'" class="item__icon store" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path d="M20 4H4v2h16V4zm1 10v-2l-1-5H4l-1 5v2h1v6h10v-6h4v6h2v-6h1zm-9 4H6v-4h6v4z" />
                        </svg>
                        <svg v-else class="item__icon" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
                            <path d="M0 0h24v24H0z" fill="none"/>
                        </svg>
                    </div>
                    <div class="item__details">
                        <div class="item__title">{{ place.title }}</div>
                        <div class="item__description">{{ place.address }}</div>
                    </div>
                    <div class="item__maps-icon" v-if="place.description">
                        
                        <svg height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path d="M21.41 11.58l-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58.55 0 1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41 0-.55-.23-1.06-.59-1.42zM5.5 7C4.67 7 4 6.33 4 5.5S4.67 4 5.5 4 7 4.67 7 5.5 6.33 7 5.5 7z" />
                        </svg>

                    </div>
                </div>
                
                <div v-if="isExpanded(place)" class="item-information">
                    <div class="item-information__content content" v-if="place.description" v-html="place.description"></div>
                    <div class="item-information__content content" v-if="!place.description">
                        Geen kortingen beschikbaar.
                    </div>
                    <div class="item-information__actions">
                        <button class="btn">Openen in Google Maps</button>
                        <button class="btn">Delen</button>
                    </div>
                </div>

            </div>


        </div>

        <div v-else style="margin-top: 5rem;flex-direction: column;display: flex;justify-content: center;align-items: center;">
            <img src="/empty.png" style="margin-bottom: 1.5rem;">

            <h3 class="is-size-4">Geen plekken gevonden.</h3>
        </div>
    </div>
    
</template>