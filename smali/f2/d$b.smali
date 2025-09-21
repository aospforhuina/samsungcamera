.class Lf2/d$b;
.super Lf2/f;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Lf2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lf2/f;

.field final synthetic c:Lf2/d;


# direct methods
.method constructor <init>(Lf2/d;Landroid/text/TextPaint;Lf2/f;)V
    .locals 0

    iput-object p1, p0, Lf2/d$b;->c:Lf2/d;

    iput-object p2, p0, Lf2/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lf2/d$b;->b:Lf2/f;

    invoke-direct {p0}, Lf2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lf2/d$b;->b:Lf2/f;

    invoke-virtual {p0, p1}, Lf2/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/d$b;->c:Lf2/d;

    iget-object v1, p0, Lf2/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lf2/d;->p(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object p0, p0, Lf2/d$b;->b:Lf2/f;

    invoke-virtual {p0, p1, p2}, Lf2/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
