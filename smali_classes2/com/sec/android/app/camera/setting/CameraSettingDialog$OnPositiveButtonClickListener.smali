.class Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;
.super Ljava/lang/Object;
.source "CameraSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/CameraSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPositiveButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog;Lcom/sec/android/app/camera/setting/j1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

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

    const-string v0, "CameraSettingDialog"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p2, Lcom/sec/android/app/camera/setting/CameraSettingDialog$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$SettingDialogId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/16 v1, 0xb

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x7ea

    invoke-static {p2, v1, v2}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->requestHighAccuracyLocationMode()V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setShowSnapchatLensesFunMode(Z)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->resetSetting()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->startContactUsActivity()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->i(Lcom/sec/android/app/camera/setting/CameraSettingDialog;Z)V

    .line 10
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->geSettingDialogEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;Z)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->h(Lcom/sec/android/app/camera/setting/CameraSettingDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
