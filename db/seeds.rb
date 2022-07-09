# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Region.create([
    {name: 'no aplica'},
    {name: 'Región de Arica y Parinacota'},
    {name: 'Región de Tarapacá'},
    {name: 'Región de Antofagasta'},
    {name: 'Región de Atacama'},
    {name: 'Región de Coquimbo'},
    {name: 'Región de Valparaíso'},
    {name: 'Región del Libertador General Bernardo OHiggins'},
    {name: 'Región del Maule'},
    {name: 'Región del Ñuble'},
    {name: 'Región del Biobío'},
    {name: 'Región de La Araucanía'},
    {name: 'Región de Los Ríos'},
    {name: 'Región de Los Lagos'},
    {name: 'Región de Aysén del G. Carlos Ibañez del Campo'},
    {name: 'Región de Magallanes y de la Antártica Chilena'},
    {name: 'Región Metropolitana de Santiago'},
])

Modality.create([
    {name:'presencial'},
    {name: 'remoto'},
    {name: 'mixto'},
])
