.class Lp5/f$e;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lp5/f$e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp5/f$e;->lambda$setPositiveButton$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lp5/f$e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp5/f$e;->lambda$setPositiveButton$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lp5/f$e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp5/f$e;->lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lp5/f$e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp5/f$e;->lambda$setNegativeButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic e(Lp5/f$e;)Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;
    .locals 0

    iget-object p0, p0, Lp5/f$e;->c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    return-object p0
.end method

.method private synthetic lambda$setNegativeButton$0(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    .line 3
    iget-object v3, p0, Lp5/f$e;->c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;->onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lp5/f$e;->b:Landroid/content/DialogInterface$OnClickListener;

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
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    .line 3
    iget-object v3, p0, Lp5/f$e;->c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;->onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lp5/f$e;->b:Landroid/content/DialogInterface$OnClickListener;

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
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    .line 3
    iget-object v3, p0, Lp5/f$e;->c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;->onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lp5/f$e;->a:Landroid/content/DialogInterface$OnClickListener;

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
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lp5/f;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    .line 3
    iget-object v3, p0, Lp5/f$e;->c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;->onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lp5/f$e;->a:Landroid/content/DialogInterface$OnClickListener;

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
.method public f(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    iput-object p1, p0, Lp5/f$e;->c:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    iput-object p2, p0, Lp5/f$e;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    new-instance p2, Lp5/k0;

    invoke-direct {p2, p0}, Lp5/k0;-><init>(Lp5/f$e;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 3
    iput-object p2, p0, Lp5/f$e;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    new-instance p2, Lp5/j0;

    invoke-direct {p2, p0}, Lp5/j0;-><init>(Lp5/f$e;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    iput-object p2, p0, Lp5/f$e;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    new-instance p2, Lp5/h0;

    invoke-direct {p2, p0}, Lp5/h0;-><init>(Lp5/f$e;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 3
    iput-object p2, p0, Lp5/f$e;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    new-instance p2, Lp5/i0;

    invoke-direct {p2, p0}, Lp5/i0;-><init>(Lp5/f$e;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method
