.class Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "CameraSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/CameraSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDialogId:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingDialog;

    .line 2
    invoke-direct {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->lambda$setPositiveButton$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->lambda$setPositiveButton$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->lambda$setNegativeButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$0(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;->onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;->onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setPositiveButton$2(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;->onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setPositiveButton$3(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingDialogListener;->onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public setDialogId(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraSettingDialog;->j()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mDialogId:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/setting/g1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/setting/g1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/setting/h1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/setting/h1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/setting/f1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/setting/f1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/setting/e1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/setting/e1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingDialog$CustomDialog;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method
