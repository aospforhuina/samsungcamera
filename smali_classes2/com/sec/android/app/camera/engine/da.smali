.class public final synthetic Lcom/sec/android/app/camera/engine/da;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/ZoomController;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/ZoomController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/da;->a:Lcom/sec/android/app/camera/engine/ZoomController;

    iput p2, p0, Lcom/sec/android/app/camera/engine/da;->b:I

    iput p3, p0, Lcom/sec/android/app/camera/engine/da;->c:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/da;->a:Lcom/sec/android/app/camera/engine/ZoomController;

    iget v1, p0, Lcom/sec/android/app/camera/engine/da;->b:I

    iget p0, p0, Lcom/sec/android/app/camera/engine/da;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->d(Lcom/sec/android/app/camera/engine/ZoomController;IILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
