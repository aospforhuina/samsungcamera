.class public abstract Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a;
.super Landroid/os/Binder;
.source "ICameraControlAidlCallback.java"

# interfaces
.implements Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

.field static final TRANSACTION_decreaseZoomValue:I = 0x1c

.field static final TRANSACTION_increaseZoomValue:I = 0x1b

.field static final TRANSACTION_isPhoneStorageAvailable:I = 0x1e

.field static final TRANSACTION_notifyControllerAppLaunched:I = 0x12

.field static final TRANSACTION_notifyControllerAppTerminated:I = 0x13

.field static final TRANSACTION_notifyControllerWidgetLaunched:I = 0x14

.field static final TRANSACTION_notifyControllerWidgetTerminated:I = 0x15

.field static final TRANSACTION_notifyProviderLaunched:I = 0x10

.field static final TRANSACTION_notifyProviderTerminated:I = 0x11

.field static final TRANSACTION_notifyProviderVersion:I = 0x16

.field static final TRANSACTION_notifySuccessMirroring:I = 0xf

.field static final TRANSACTION_requestAngleChangeEvent:I = 0x19

.field static final TRANSACTION_requestBurstModeStart:I = 0x17

.field static final TRANSACTION_requestBurstModeStop:I = 0x18

.field static final TRANSACTION_requestCameraTerminate:I = 0x1

.field static final TRANSACTION_requestCancelTimer:I = 0xd

.field static final TRANSACTION_requestCurrentStates:I = 0x8

.field static final TRANSACTION_requestPauseRecording:I = 0x4

.field static final TRANSACTION_requestResumeRecording:I = 0x5

.field static final TRANSACTION_requestStartRecording:I = 0x3

.field static final TRANSACTION_requestStopAndSwitchToPhoto:I = 0x1d

.field static final TRANSACTION_requestStopCapture:I = 0x1a

.field static final TRANSACTION_requestStopRecording:I = 0x6

.field static final TRANSACTION_requestSwitchToPhoto:I = 0x9

.field static final TRANSACTION_requestSwitchToVideo:I = 0x1f

.field static final TRANSACTION_requestTakePicture:I = 0x2

.field static final TRANSACTION_setFlashState:I = 0xb

.field static final TRANSACTION_setLensState:I = 0xa

.field static final TRANSACTION_setTimerState:I = 0xc

.field static final TRANSACTION_setTouchFocus:I = 0x7

.field static final TRANSACTION_setZoomLevel:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a$a;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a$a;->b:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a$a;->b:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a$a;->b:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestSwitchToVideo()V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->isPhoneStorageAvailable()V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 8
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestStopAndSwitchToPhoto()V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->decreaseZoomValue()V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 14
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->increaseZoomValue()V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 17
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestStopCapture()V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 20
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 22
    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestAngleChangeEvent(I)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 24
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestBurstModeStop()V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 27
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestBurstModeStart()V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 30
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyProviderVersion(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 34
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyControllerWidgetTerminated()V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 37
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyControllerWidgetLaunched()V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 40
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyControllerAppTerminated()V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyControllerAppLaunched()V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 46
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyProviderTerminated()V

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 49
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifyProviderLaunched()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 52
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->notifySuccessMirroring(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 56
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    .line 58
    invoke-interface {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->setZoomLevel(D)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 60
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestCancelTimer()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->setTimerState(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 67
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->setFlashState(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->setLensState(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestSwitchToPhoto()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestCurrentStates()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 81
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 84
    invoke-interface {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->setTouchFocus(FF)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 86
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestStopRecording()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestResumeRecording()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 92
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestPauseRecording()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 95
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestStartRecording()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestTakePicture()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 101
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;->requestCameraTerminate()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
