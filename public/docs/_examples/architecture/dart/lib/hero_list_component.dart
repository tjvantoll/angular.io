// #docplaster
library developer_guide_intro.hero_list_component;

import 'package:angular2/angular2.dart';
import 'package:developer_guide_intro/hero.dart';
import 'package:developer_guide_intro/hero_detail_component.dart';
import 'package:developer_guide_intro/hero_service.dart';

// #docregion metadata
// #docregion providers
@Component(
// #enddocregion providers
    selector: 'hero-list',
    templateUrl: 'hero_list_component.html',
    directives: const [HeroDetailComponent],
// #docregion providers
    providers: const [HeroService])
// #enddocregion providers
// #enddocregion metadata
/*
// #docregion metadata, providers
class HeroListComponent { ... }
// #enddocregion metadata, providers
*/
// #docregion class
class HeroListComponent {
  List<Hero> heroes;
  Hero selectedHero;
// #docregion ctor
  HeroListComponent(HeroService heroService) {
    heroes = heroService.getHeroes();
  }
// #enddocregion ctor
  selectHero(Hero hero) {
    selectedHero = hero;
  }
}
// #enddocregion class
