.class final Lk3/e$j;
.super Lkotlin/jvm/internal/m;
.source "OcrEntityExtractor.kt"

# interfaces
.implements Lu6/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk3/e;->j(Ll3/a;Ljava/util/List;Landroid/graphics/Rect;)Lk3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/l<",
        "Landroid/view/textclassifier/TextLinks$TextLink;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk3/e;

.field final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk3/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk3/e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk3/e;",
            "Ljava/util/List<",
            "+",
            "Lk3/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk3/e$j;->a:Lk3/e;

    iput-object p2, p0, Lk3/e$j;->b:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/textclassifier/TextLinks$TextLink;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lk3/e$j;->a:Lk3/e;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk3/e$j;->b:Ljava/util/List;

    invoke-static {v0, p1, p0}, Lk3/e;->b(Lk3/e;Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {p0, p1}, Lk3/e$j;->a(Landroid/view/textclassifier/TextLinks$TextLink;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
