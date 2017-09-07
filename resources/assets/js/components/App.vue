<template>
<div>
    <div class="header" :class="{ 'header--open': filterActive }">
        <div class="header__content">
            <div class="header__title">{{ filterActive ? 'Filter': 'In Almere' }}</div>
            <div class="header__actions">
                <svg v-if="!filterActive" @click="filterActive = true" fill="#fff" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M10 18h4v-2h-4v2zM3 6v2h18V6H3zm3 7h12v-2H6v2z" />
                    <path d="M0 0h24v24H0z" fill="none" />
                </svg>
                <svg v-if="filterActive" @click="applyFilter" fill="#fff" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 0h24v24H0z" fill="none"/>
                    <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z"/>
                </svg>
            </div>
        </div>
        <div class="header__view">
            <div class="field" style="margin-bottom: 1.5rem;">
                <label class="control-label" v-if="filters.length > 0" @click="deselectAll">Selectie verwijderen</label>
                <label class="control-label" v-if="filters.length === 0" @click="selectAll">Alles selecteren</label>
            </div>

            <div class="field">
                <b-checkbox v-model="filters" native-value="restaurant" checked>Restaurant</b-checkbox>
            </div>
            <div class="field">
                <b-checkbox v-model="filters" native-value="coffee" checked>Koffie</b-checkbox>
            </div>
            <div class="field">
                <b-checkbox v-model="filters" native-value="beauty" checked>Beauty</b-checkbox>
            </div>
            <div class="field">
                <b-checkbox v-model="filters" native-value="sport" checked>Sport</b-checkbox>
            </div>
            <div class="field">
                <b-checkbox v-model="filters" native-value="clothing" checked>Kledingwinkels</b-checkbox>
            </div>
            <div class="field">
                <b-checkbox v-model="filters" native-value="store" checked>Winkels</b-checkbox>
            </div>
        </div>
    </div>

    <h-places :places="filteredPlaces"></h-places>
</div>
</template>

<script>
    export default {
        props: ['places'],

        data() {
            return {
                filterActive: false,
                filters: [
                    'restaurant',
                    'coffee',
                    'sport',
                    'clothing',
                    'store',
                    'beauty'
                ]
            }
        },

        computed: {
            filteredPlaces() {
                return this.places.filter(place => {
                    return this.filters.indexOf(place.type) !== -1;
                });
            }
        },
        
        methods: {
            applyFilter() {
                this.filterActive = false;
            },
            selectAll() {
                this.filters = [
                    'restaurant',
                    'coffee',
                    'sport',
                    'clothing',
                    'store',
                    'beauty'
                ];
            },
            deselectAll() {
                this.filters = [];
            }
        }
    }
</script>
