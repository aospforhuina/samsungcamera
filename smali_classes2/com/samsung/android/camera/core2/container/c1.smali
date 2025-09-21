.class public final synthetic Lcom/samsung/android/camera/core2/container/c1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/util/Rational;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Rational;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/c1;->a:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/c1;->a:Landroid/util/Rational;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->g(Landroid/util/Rational;Ljava/lang/Integer;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
