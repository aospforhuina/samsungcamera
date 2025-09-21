.class public final synthetic Lm3/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/graphics/Canvas;

.field public final synthetic b:Landroid/graphics/Paint;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/m;->a:Landroid/graphics/Canvas;

    iput-object p2, p0, Lm3/m;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm3/m;->a:Landroid/graphics/Canvas;

    iget-object p0, p0, Lm3/m;->b:Landroid/graphics/Paint;

    check-cast p1, Lm3/w$g;

    invoke-static {v0, p0, p1}, Lm3/w;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V

    return-void
.end method
