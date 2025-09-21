.class Lf2/d$a;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/d;->h(Landroid/content/Context;Lf2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf2/f;

.field final synthetic b:Lf2/d;


# direct methods
.method constructor <init>(Lf2/d;Lf2/f;)V
    .locals 0

    iput-object p1, p0, Lf2/d$a;->b:Lf2/d;

    iput-object p2, p0, Lf2/d$a;->a:Lf2/f;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/d$a;->b:Lf2/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lf2/d;->c(Lf2/d;Z)Z

    .line 2
    iget-object p0, p0, Lf2/d$a;->a:Lf2/f;

    invoke-virtual {p0, p1}, Lf2/f;->a(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/d$a;->b:Lf2/d;

    iget v1, v0, Lf2/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lf2/d;->b(Lf2/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lf2/d$a;->b:Lf2/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lf2/d;->c(Lf2/d;Z)Z

    .line 3
    iget-object p1, p0, Lf2/d$a;->a:Lf2/f;

    iget-object p0, p0, Lf2/d$a;->b:Lf2/d;

    invoke-static {p0}, Lf2/d;->a(Lf2/d;)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lf2/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
