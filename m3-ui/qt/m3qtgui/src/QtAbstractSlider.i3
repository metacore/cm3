(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtAbstractSlider;

FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT Orientation;



TYPE T = QAbstractSlider;


TYPE                             (* Enum SliderAction *)
  SliderAction = {SliderNoAction, SliderSingleStepAdd, SliderSingleStepSub,
                  SliderPageStepAdd, SliderPageStepSub, SliderToMinimum,
                  SliderToMaximum, SliderMove};

TYPE
  QAbstractSlider <: QAbstractSliderPublic;
  QAbstractSliderPublic = QWidget BRANDED OBJECT
                          METHODS
                            init_0 (parent: QWidget; ): QAbstractSlider;
                            init_1 (): QAbstractSlider;
                            orientation           (): Orientation;
                            setMinimum            (arg1: INTEGER; );
                            minimum               (): INTEGER;
                            setMaximum            (arg1: INTEGER; );
                            maximum               (): INTEGER;
                            setRange              (min, max: INTEGER; );
                            setSingleStep         (arg1: INTEGER; );
                            singleStep            (): INTEGER;
                            setPageStep           (arg1: INTEGER; );
                            pageStep              (): INTEGER;
                            setTracking           (enable: BOOLEAN; );
                            hasTracking           (): BOOLEAN;
                            setSliderDown         (arg1: BOOLEAN; );
                            isSliderDown          (): BOOLEAN;
                            setSliderPosition     (arg1: INTEGER; );
                            sliderPosition        (): INTEGER;
                            setInvertedAppearance (arg1: BOOLEAN; );
                            invertedAppearance    (): BOOLEAN;
                            setInvertedControls   (arg1: BOOLEAN; );
                            invertedControls      (): BOOLEAN;
                            value                 (): INTEGER;
                            triggerAction         (action: SliderAction; );
                            setValue              (arg1: INTEGER; );
                            setOrientation        (arg1: Orientation; );
                            destroyCxx            ();
                          END;


END QtAbstractSlider.
