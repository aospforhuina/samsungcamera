.class public final synthetic Lcom/sec/android/app/camera/setting/repository/ei;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueSetter;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/repository/ei;->a:Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;

    return-void
.end method


# virtual methods
.method public final set(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/ei;->a:Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->a6(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V

    return-void
.end method
