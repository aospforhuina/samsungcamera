.class public final synthetic Lcom/sec/android/app/camera/engine/callback/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/q;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/q;->a:Ljava/util/List;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$HandGestureDetectionListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/HandGestureDetectionInfoCallback;->c(Ljava/util/List;Lcom/sec/android/app/camera/interfaces/CallbackManager$HandGestureDetectionListener;)V

    return-void
.end method
