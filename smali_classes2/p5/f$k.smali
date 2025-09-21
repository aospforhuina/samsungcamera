.class Lp5/f$k;
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
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lp5/f;


# direct methods
.method private constructor <init>(Lp5/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp5/f$k;->a:Lp5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lp5/f;Lp5/p0;)V
    .locals 0

    invoke-direct {p0, p1}, Lp5/f$k;-><init>(Lp5/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.sm.ACTION_DASHBOARD"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object p2, Lu3/l;->P1:Lu3/l;

    invoke-static {p2}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :try_start_0
    iget-object p0, p0, Lp5/f$k;->a:Lp5/f;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CameraDialog"

    const-string p1, "OnSmartManagerButtonClickListener - Activity is not found"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogScreenId;->DIALOG_MEMORY_FULL:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    sget-object p1, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_MEMORY_FULL_SMART_MANAGER:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLogForDialog(Lcom/sec/android/app/camera/logging/SaLogScreenId;Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    return-void
.end method
