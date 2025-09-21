.class Lp5/f$g;
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
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lp5/f;


# direct methods
.method private constructor <init>(Lp5/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp5/f$g;->a:Lp5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lp5/f;Lp5/l0;)V
    .locals 0

    invoke-direct {p0, p1}, Lp5/f$g;-><init>(Lp5/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p0, p0, Lp5/f$g;->a:Lp5/f;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogScreenId;->DIALOG_MEMORY_FULL_NOT_SUPPORTED_SMART_MANAGER:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    sget-object p1, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_MEMORY_FULL_NOT_SUPPORTED_SMART_MANAGER:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLogForDialog(Lcom/sec/android/app/camera/logging/SaLogScreenId;Lcom/sec/android/app/camera/logging/SaLogEventId;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CameraDialog"

    const-string p1, "OnAnalyzeStorageClickListener - Activity is not found"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
