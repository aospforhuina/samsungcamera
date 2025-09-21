.class Lt4/b$a;
.super Ljava/lang/Object;
.source "IsoInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[J

.field public c:Ljava/util/UUID;

.field public d:[B

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lt4/b$a;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(I[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lt4/b$a;->a:I

    .line 3
    iput-object p2, p0, Lt4/b$a;->b:[J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lt4/b$a;->f:Lt4/b$a;

    return-void
.end method
