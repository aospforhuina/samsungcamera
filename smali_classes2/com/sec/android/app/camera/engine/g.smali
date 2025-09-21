.class public final synthetic Lcom/sec/android/app/camera/engine/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/AeAfController;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/AeAfController;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/g;->a:Lcom/sec/android/app/camera/engine/AeAfController;

    iput p2, p0, Lcom/sec/android/app/camera/engine/g;->b:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/engine/g;->c:Z

    return-void
.end method


# virtual methods
.method public final update(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/g;->a:Lcom/sec/android/app/camera/engine/AeAfController;

    iget v1, p0, Lcom/sec/android/app/camera/engine/g;->b:I

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/g;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->w(Lcom/sec/android/app/camera/engine/AeAfController;IZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
