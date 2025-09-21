.class public Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabPresenter;
.super Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;
.source "ColorToneV2TabPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter<",
        "Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabContract$View;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method private onColorToneClick(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabPresenter$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported commandId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {p1, v3}, Lm5/d0;->d(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;

    move-result-object v3

    invoke-virtual {v3}, Lm5/q0;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabContract$View;

    check-cast v3, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;

    invoke-interface {v3, v0, v2}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;->setSelectedButton(ZZ)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V2_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getEventIdByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    invoke-static {p1}, Lm5/f0;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onBrightClick()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SELFIE_TONE_V2_BRIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabPresenter;->onColorToneClick(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method public onNaturalClick()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SELFIE_TONE_V2_NATURAL:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabPresenter;->onColorToneClick(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method public onSliderProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->start()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;->setSelectedButton(ZZ)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabPresenter;->stop()V

    return-void
.end method
