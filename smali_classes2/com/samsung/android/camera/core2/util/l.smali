.class public final synthetic Lcom/samsung/android/camera/core2/util/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/util/Size;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/l;->a:Landroid/util/Size;

    iput p2, p0, Lcom/samsung/android/camera/core2/util/l;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/l;->a:Landroid/util/Size;

    iget p0, p0, Lcom/samsung/android/camera/core2/util/l;->b:I

    check-cast p1, Landroid/util/Size;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->a(Landroid/util/Size;ILandroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
