.class public final synthetic Lm3/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/graphics/Canvas;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/h;->a:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm3/h;->a:Landroid/graphics/Canvas;

    check-cast p1, Lm3/w$f;

    invoke-static {p0, p1}, Lm3/w;->m(Landroid/graphics/Canvas;Lm3/w$f;)V

    return-void
.end method
