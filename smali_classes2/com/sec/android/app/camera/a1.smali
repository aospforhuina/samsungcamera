.class public final synthetic Lcom/sec/android/app/camera/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/a1;->a:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/a1;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/a1;->a:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/a1;->b:Z

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->e(Ljava/util/Map;ZLcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    return-void
.end method
