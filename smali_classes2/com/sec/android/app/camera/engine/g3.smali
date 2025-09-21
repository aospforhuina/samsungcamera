.class public final synthetic Lcom/sec/android/app/camera/engine/g3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/BeautyController;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/BeautyController;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/g3;->a:Lcom/sec/android/app/camera/engine/BeautyController;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/g3;->b:[I

    return-void
.end method


# virtual methods
.method public final update(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/g3;->a:Lcom/sec/android/app/camera/engine/BeautyController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/g3;->b:[I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->D(Lcom/sec/android/app/camera/engine/BeautyController;[ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
