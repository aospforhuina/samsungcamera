.class public final synthetic Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/b;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/b;->a:Landroid/graphics/Rect;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/SecLocaltmNode;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
