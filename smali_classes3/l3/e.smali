.class public final synthetic Ll3/e;
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

    iput-object p1, p0, Ll3/e;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3/e;->a:Landroid/graphics/Rect;

    check-cast p1, Lk4/j$g;

    invoke-static {p0, p1}, Ll3/f;->b(Landroid/graphics/Rect;Lk4/j$g;)Ll3/a$h;

    move-result-object p0

    return-object p0
.end method
