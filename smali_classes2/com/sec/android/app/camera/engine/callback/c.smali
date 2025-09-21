.class public final synthetic Lcom/sec/android/app/camera/engine/callback/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/c;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/c;->a:Ljava/lang/Integer;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$AfLensInfoListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/AfLensInfoCallback;->b(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$AfLensInfoListener;)V

    return-void
.end method
