.class public final synthetic Lcom/sec/android/app/camera/engine/callback/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/engine/callback/g0;->a:I

    iput p2, p0, Lcom/sec/android/app/camera/engine/callback/g0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/callback/g0;->a:I

    iget p0, p0, Lcom/sec/android/app/camera/engine/callback/g0;->b:I

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->b(IILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method
