.class public final synthetic Lcom/sec/android/app/camera/provider/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/a;->a:Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/provider/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/provider/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/a;->a:Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/a;->c:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;->b(Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
