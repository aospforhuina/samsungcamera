.class public final Ln3/a;
.super Ljava/lang/Object;
.source "WidgetRotationImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/a$a;
    }
.end annotation


# static fields
.field public static final c:Ln3/a$a;


# instance fields
.field private final a:Lc3/a;

.field private final b:Lc3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ln3/a;->c:Ln3/a$a;

    return-void
.end method

.method public constructor <init>(Lc3/a;Lc3/d;)V
    .locals 1

    const-string v0, "contentProviderCaller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/a;->a:Lc3/a;

    .line 3
    iput-object p2, p0, Ln3/a;->b:Lc3/d;

    return-void
.end method
