namespace Core.Responses;

public record ListTabsResponse(
    IEnumerable<ListTabItemResponse> Items
);
