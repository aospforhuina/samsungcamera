.class Lp5/f$j;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lp5/f;


# direct methods
.method private constructor <init>(Lp5/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp5/f$j;->a:Lp5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lp5/f;Lp5/o0;)V
    .locals 0

    invoke-direct {p0, p1}, Lp5/f$j;-><init>(Lp5/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->values()[Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnPositiveButtonClickListener - id : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraDialog"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p2, Lp5/f$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x5

    if-eq p2, v2, :cond_4

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq p2, v2, :cond_3

    const/4 v2, 0x7

    if-eq p2, v2, :cond_2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-static {p2, v0}, Lp5/f;->C(Lp5/f;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "com.samsung.android.singletake.service"

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/PermissionUtils;->startAppInfoForPermission(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    sget-object p2, Lcom/sec/android/app/camera/logging/SaLogScreenId;->REAR_SHOOTINGMODE_PHOTO:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLogForDialog(Lcom/sec/android/app/camera/logging/SaLogScreenId;Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-static {p2, p1}, Lp5/f;->D(Lp5/f;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "skipped - microphone is restricted."

    .line 9
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-static {p2, p1}, Lp5/f;->A(Lp5/f;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto/16 :goto_0

    .line 12
    :cond_1
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    .line 13
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 14
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Z)V

    .line 15
    sget-object p2, Lcom/sec/android/app/camera/logging/SaLogScreenId;->SETTINGS:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_CHANGE_STORAGE_LOCATION:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLogForDialog(Lcom/sec/android/app/camera/logging/SaLogScreenId;Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-static {p2, v1}, Lp5/f;->B(Lp5/f;Z)V

    goto :goto_0

    .line 17
    :cond_3
    :pswitch_6
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p2

    invoke-interface {p2, p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Z)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 19
    :cond_5
    iget-object p2, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lp5/f$j;->a:Lp5/f;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/PermissionUtils;->startAppInfoForPermission(Landroid/app/Activity;Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getDialogEventId(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Z)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    .line 21
    iget-object p0, p0, Lp5/f$j;->a:Lp5/f;

    invoke-static {p0}, Lp5/f;->z(Lp5/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
