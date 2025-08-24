namespace Core.Responses;

public record ListContributorsResponse(
    IEnumerable<ListContributorItemResponse> Items
);
