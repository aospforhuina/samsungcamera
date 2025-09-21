.class public final synthetic Lcom/sec/android/app/camera/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CameraGenericEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CameraGenericEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/v0;->a:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/v0;->a:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->d(Lcom/sec/android/app/camera/CameraGenericEventHandler;)V

    return-void
.end method
