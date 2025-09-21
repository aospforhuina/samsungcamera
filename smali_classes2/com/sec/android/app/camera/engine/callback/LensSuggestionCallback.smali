.class public Lcom/sec/android/app/camera/engine/callback/LensSuggestionCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "LensSuggestionCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/LensSuggestionCallback;->lambda$onLensSuggestionChanged$0(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;)V

    return-void
.end method

.method private static synthetic lambda$onLensSuggestionChanged$0(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;->onLensSuggestionChanged(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setLensSuggestionStateCallback(Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;)V

    return-void
.end method

.method protected isMultipleListenersSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLensSuggestionChanged(Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/w;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/w;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
