.class Lt2/c;
.super Ln2/w;
.source "SqlTimestampTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Ln2/x;


# instance fields
.field private final a:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt2/c$a;

    invoke-direct {v0}, Lt2/c$a;-><init>()V

    sput-object v0, Lt2/c;->b:Ln2/x;

    return-void
.end method

.method private constructor <init>(Ln2/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/w<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 3
    iput-object p1, p0, Lt2/c;->a:Ln2/w;

    return-void
.end method

.method synthetic constructor <init>(Ln2/w;Lt2/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lt2/c;-><init>(Ln2/w;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lt2/c;->e(Lu2/a;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lt2/c;->f(Lu2/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public e(Lu2/a;)Ljava/sql/Timestamp;
    .locals 2

    .line 1
    iget-object p0, p0, Lt2/c;->a:Ln2/w;

    invoke-virtual {p0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Lu2/c;Ljava/sql/Timestamp;)V
    .locals 0

    iget-object p0, p0, Lt2/c;->a:Ln2/w;

    invoke-virtual {p0, p1, p2}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    return-void
.end method
