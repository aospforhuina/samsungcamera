.class public final synthetic Lcom/sec/android/app/camera/engine/callback/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

.field public final synthetic b:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/d;->a:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/d;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/d;->a:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/d;->b:Landroid/util/Pair;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$AutoFramingInfoListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/AutoFramingInfoCallback;->b(Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;Landroid/util/Pair;Lcom/sec/android/app/camera/interfaces/CallbackManager$AutoFramingInfoListener;)V

    return-void
.end method
