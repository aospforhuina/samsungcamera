.class Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;
.super Ljava/lang/Object;
.source "ProPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfoEventManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;Lcom/sec/android/app/camera/shootingmode/pro/v1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V

    return-void
.end method


# virtual methods
.method public onColorTemperatureChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$300(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$400(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    div-int/lit8 p1, p1, 0x64

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->findNearestColorTemperature(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->d0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$500(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->V(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->a0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Y(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->V(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->R(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Z(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->V(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->R(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExposureTimeChanged(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$600(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    const/4 p2, 0x1

    const/16 v1, 0x25

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->findNearestShutterSpeed(III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->f0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$700(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->X(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->c0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Y(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->X(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->T(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, p2, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Z(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->X(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->T(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p2, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->h0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x14

    const/16 v1, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Y(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Z(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p0

    invoke-interface {p0, v2, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onIsoChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$800(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->findNearestIso(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->e0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->b0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Y(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->W(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->S(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->Z(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->W(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->S(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method
