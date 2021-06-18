//
//  ContentView.swift
//  selfSensored
//
//  Created by C. Thomas Brittain on 6/18/21.
//

import SwiftUI
import HealthKit


public func getAllHKSampleTypesForWriting() -> Set<HKSampleType> {
    // TODO: Alphabetize
    let dataTypes : Set = [
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.restingHeartRate)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodGlucose)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodPressureSystolic)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodPressureDiastolic)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMassIndex)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyFatPercentage)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyTemperature)!
                            
    ]
    return dataTypes
}



public func getAllHKSampleTypesForReading() -> Set<HKObjectType> {
    // TODO: Alphabetize
    let dataTypes : Set = [
        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.biologicalSex)!,
        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.bloodType)!,
        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)!,
        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.fitzpatrickSkinType)!,
        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.wheelchairUse)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceCycling)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.lowHeartRateEvent)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.highHeartRateEvent)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.irregularHeartRhythmEvent)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.restingHeartRate)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRateVariabilitySDNN)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.walkingHeartRateAverage)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.pushCount)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWheelchair)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.swimmingStrokeCount)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceSwimming)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceDownhillSnowSports)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.basalEnergyBurned)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.flightsClimbed)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.nikeFuel)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.appleExerciseTime)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.appleStandHour)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.appleStandTime)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.vo2Max)!,
//        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.lowCardioFitnessEvent)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.height)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMassIndex)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.leanBodyMass)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyFatPercentage)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.waistCircumference)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.basalBodyTemperature)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.cervicalMucusQuality)!,
//        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.contraceptive)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.intermenstrualBleeding)!,
//        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.lactation)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.menstrualFlow)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.ovulationTestResult)!,
//        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.pregnancy)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sexualActivity)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.environmentalAudioExposure)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.headphoneAudioExposure)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.environmentalAudioExposureEvent)!,
//        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.headphoneAudioExposureEvent)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.environmentalAudioExposureEvent)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.oxygenSaturation)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyTemperature)!,
//        HKObjectType.correlationType(forIdentifier: HKCorrelationTypeIdentifier.bloodPressure)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodPressureSystolic)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodPressureDiastolic)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.respiratoryRate)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.sixMinuteWalkTestDistance)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.walkingSpeed)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.walkingStepLength)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.walkingAsymmetryPercentage)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.walkingDoubleSupportPercentage)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stairAscentSpeed)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stairDescentSpeed)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodAlcoholContent)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bloodGlucose)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.electrodermalActivity)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.forcedExpiratoryVolume1)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.forcedVitalCapacity)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.inhalerUsage)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.insulinDelivery)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.numberOfTimesFallen)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.peakExpiratoryFlowRate)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.peripheralPerfusionIndex)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.mindfulSession)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.toothbrushingEvent)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.handwashingEvent)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.uvExposure)!,
//        HKObjectType.correlationType(forIdentifier: HKCorrelationTypeIdentifier.food)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryEnergyConsumed)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryCarbohydrates)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryFiber)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietarySugar)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryFatTotal)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryFatMonounsaturated)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryFatPolyunsaturated)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryFatSaturated)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryCholesterol)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryProtein)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminA)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryThiamin)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryRiboflavin)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryNiacin)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryPantothenicAcid)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminB6)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryBiotin)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminB12)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminC)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminD)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminE)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryVitaminK)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryFolate)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryCalcium)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryChloride)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryIron)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryMagnesium)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryPhosphorus)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryPotassium)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietarySodium)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryZinc)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryWater)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryCaffeine)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryChromium)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryCopper)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryIodine)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryManganese)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryMolybdenum)!,
        HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietarySelenium)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.abdominalCramps)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.bloating)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.constipation)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.diarrhea)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.heartburn)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.nausea)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.vomiting)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.appetiteChanges)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.chills)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.dizziness)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.fainting)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.fatigue)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.fever)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.generalizedBodyAche)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.hotFlashes)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.chestTightnessOrPain)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.coughing)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.rapidPoundingOrFlutteringHeartbeat)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.shortnessOfBreath)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.skippedHeartbeat)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.wheezing)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.lowerBackPain)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.headache)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.memoryLapse)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.moodChanges)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.lossOfSmell)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.lossOfTaste)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.runnyNose)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.soreThroat)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sinusCongestion)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.breastPain)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.pelvicPain)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.vaginalDryness)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.acne)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.drySkin)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.hairLoss)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.nightSweats)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepChanges)!,
        HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.bladderIncontinence)!,
    ]
    return dataTypes
}

func authorizeHealthKit() {

    
  // Requests permission to save and read the specified data types.
     healthStore.requestAuthorization(toShare: getAllHKSampleTypesForWriting(), read: getAllHKSampleTypesForReading()) { _, _ in }
 }

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding().onAppear(perform:
                authorizeHealthKit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
